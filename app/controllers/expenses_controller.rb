class ExpensesController < ApplicationController

    def index
        @expenses = Expense.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def new 
        @expense = Expense.new
    end
    
    def edit
        @expense = Expense.find(params[:id])
    end

    def create
        @expense = Expense.new(expense_params)
        if @expense.save
            redirect_to event_path(@expense.person.event)
        else
            render 'new'
        end
       #render plain: params[:expense]
    end

    def update
        @expense = Expense.find(params[:id])
        if @expense.update(expense_params)
            redirect_to @expense
        else
            render 'edit'
        end
    end

    def destroy
        @expense = Expense.find(params[:id])
        @expense.destroy
        
        redirect_to expenses_path
    end

    private
    def expense_params
      params.require(:expense).permit(:name, :price, :article_id, :person_id)
    end

end
