require "spec_helper"

#funcionalidade
describe "Signup" do
	#contexto
	context "with valid data" do
		#antes do teste, serve para preparar
		before do
			visit "/"
			click_link "Quero me cadastrar"

			fill_in "Seu nome", :with => "John Doe"
			fill_in "Seu e-mail", :with => "john@example.com"
			fill_in "Sua senha", :with => "test"
			fill_in "Confirme sua senha", :with => "test"

			click_button "Quero me cadastrar"
		end

		#teste
		it "redirects to the login page" do
			expect(current_path).to eql("/login")
		end

		it "displays success message"
	end

	context "with invalid data" do
		it "displays signup form"
		it "displays error message"
	end
end