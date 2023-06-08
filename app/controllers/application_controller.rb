class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # GET /
  get "/" do
    { message: "Welcome to the Expense Tracker API!" }.to_json
  end

  # GET /users
  get "/users" do
    users = User.all
    users.to_json
  end

  # POST /users
  post "/users" do
    user = User.create(params)
    if user.valid?
      status 201
      user.to_json
    else
      status 422
      { error: "Failed to create user" }.to_json
    end
  end

  # GET /banks
  get "/banks" do
    banks = Bank.all
    banks.to_json
  end

  # GET /expenses
  get "/expenses" do
    expenses = Expense.all
    expenses.to_json
  end

  # POST /expenses
  post "/expenses" do
    expense = Expense.create(params)
    if expense.valid?
      status 201
      expense.to_json
    else
      status 422
      { error: "Failed to create expense" }.to_json
    end
  end

  # GET /expenses/:id
  get "/expenses/:id" do
    expense = Expense.find(params[:id])
    expense.to_json
  end

  # PATCH /expenses/:id
  patch "/expenses/:id" do
    expense = Expense.find(params[:id])
    expense.update(params)
    expense.to_json
  end

  # DELETE /expenses/:id
  delete "/expenses/:id" do
    expense = Expense.find(params[:id])
    expense.destroy
    { message: "Expense deleted successfully" }.to_json
  end
end
