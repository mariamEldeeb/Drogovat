import 'package:drogovat/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anesthesia Dose Predictor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DosePredictorScreen(),
    );
  }
}

class DosePredictorScreen extends StatefulWidget {
  @override
  _DosePredictorScreenState createState() => _DosePredictorScreenState();
}

class _DosePredictorScreenState extends State<DosePredictorScreen> {
  final _weightController = TextEditingController();
  final _durationController = TextEditingController();
  final _ageController = TextEditingController();

  Interpreter? _interpreter;

  @override
  void initState() {
    super.initState();
    _loadModel();
  }

  void _loadModel() async {
    _interpreter = await Interpreter.fromAsset(aiModelPath);

    // Print input and output shapes
    var inputShape = _interpreter?.getInputTensor(0).shape;
    var outputShape = _interpreter?.getOutputTensor(0).shape;

    print("Input shape: $inputShape");
    print("Output shape: $outputShape");
  }
  //
  // Future<void> _loadModel() async {
  //   _interpreter = await Interpreter.fromAsset(aiModelPath);
  // }

  @override
  void dispose() {
    _weightController.dispose();
    _durationController.dispose();
    _ageController.dispose();
    _interpreter?.close();
    super.dispose();
  }

  void _predictDose() {
    final weight = double.parse(_weightController.text);
    final normalizedWeight = weight / 100.0;
    final operationDuration = double.parse(_durationController.text);
    final normalizedDuration = operationDuration / 6.0;
    final age = int.parse(_ageController.text);
    final normalizedAge = age / 70.0;

    final input = [normalizedWeight, normalizedDuration, normalizedAge];
    final output = List.filled(2, 0.0).reshape([1, 2]);

    _interpreter?.run([input], output);

    final inductionDoseRate = output[0][0];
    final maintenanceInfusionRate = output[0][1];

    // Adjust for age if over 65
    final adjustedInductionDoseRate =
        (age > 65) ? inductionDoseRate * 0.75 : inductionDoseRate;

    // Calculate doses
    final initialDose = adjustedInductionDoseRate * weight;
    final maintenanceDose = (maintenanceInfusionRate * weight / 1000) * 60;
    final totalMaintenanceDose = maintenanceDose * operationDuration;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Predicted Doses'),
          content: Text(
            'Initial Dose Rate: ${initialDose.toStringAsFixed(2)} mg/kg\n'
            'Maintenance Dose Rate: ${maintenanceDose.toStringAsFixed(2)} µg/kg/min\n'
            'Total Maintenance Dose: ${totalMaintenanceDose.toStringAsFixed(2)} mg',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anesthesia Dose Predictor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _durationController,
              decoration:
                  InputDecoration(labelText: 'Operation Duration (hours)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _predictDose,
              child: Text('Predict Dose'),
            ),
          ],
        ),
      ),
    );
  }
}
