<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Income;
use App\Expense;
use Charts;
use Carbon\Carbon;

class AdminController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $donut=Charts::create('donut', 'highcharts')
            ->title('November')
            ->labels(['Income', 'Expense', 'Saving'])
            ->values([50,40,10])
            ->responsive(true);

        $areaspline=Charts::multi('areaspline', 'highcharts')
            ->title('Last 7 Days')
            ->colors(['#ff0000', '#ffb3b3'])
            ->labels(['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday','Saturday', 'Sunday'])
            ->dataset('Income', [3, 4, 3, 5, 4, 10, 12])
            ->dataset('Expense',  [1, 3, 4, 3, 3, 5, 4])
            ->responsive(true);

        $chart = Charts::database(Income::all(), 'line', 'highcharts')
            ->dateColumn('income_date')
            ->title('Last 7 Days Income')
            ->elementLabel("Total")
            ->responsive(true)
            ->lastByDay(7, true);
        $to = Carbon::now()->format('Y-m-d');
        $from = date('Y-m-d', strtotime('-7 days', strtotime($to)));
        $last_7days_income= Income::where('income_status',1)->where('income_date','<=',$to)->where('income_date','>=',$from)->get();
        $last_7days_all_income= Income::where('income_status',1)->where('income_date','<=',$to)->where('income_date','>=',$from)->sum('income_amount');
        $last_7days_expense= Expense::where('expense_status',1)->where('expense_date','<=',$to)->where('expense_date','>=',$from)->get();
        $last_7days_all_expense= Expense::where('expense_status',1)->where('expense_date','<=',$to)->where('expense_date','>=',$from)->sum('expense_amount');
        $totalIncome=Income::where('income_status',1)->sum('income_amount');
        $totalExpense=Expense::where('expense_status',1)->sum('expense_amount');
        return view('dashboard.home', compact('totalIncome','totalExpense',"donut", "areaspline","last_7days_income","last_7days_expense","last_7days_all_income","last_7days_all_expense","chart"));
    }

}
