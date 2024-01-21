import 'package:rep_radar/models/exercises.dart';
import 'package:rep_radar/models/workouts.dart';

class WorkoutData {
  List<Workout> workoutList = [
    Workout(nxame: "Upper Body", exercises: [
      Exercise(
        name: "Bicep Curls",
        weight: "10kg",
        sets: "3",
        reps: "12",
      )
    ])
  ];
  
}
