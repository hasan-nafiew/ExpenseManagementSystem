<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Income;
use App\Expense;

class RecycleController extends Controller{
    public function __construct() {

    }

    public function index(){
        return view('recycle.index');
    }

    public function user(){

    }

    public function income_category($id){
        return view('recycle.income-category');
    }

    public function income($id){
        $all=Income::where('income_status',0)->orderBy('income_id',$id)->get();
        return view('recycle.income',compact('all'));
    }

    public function expense(){

    }
}
