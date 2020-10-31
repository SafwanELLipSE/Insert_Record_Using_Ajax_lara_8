<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::orderBy('id','DESC')->get();
        return view('student',[
          'students' => $students
        ]);
    }
    public function addStudent(Request $request)
    {
          $student = new Student;
          $student->name =$request->name;
          $student->email =$request->email;
          $student->phone =$request->phone;
          $student->department =$request->department;
          $student->save();
          return response()->json($student);
    }
}
