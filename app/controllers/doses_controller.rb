class DosesController < ApplicationController
  before_action :set_cocktail, only: [:index, :show, :new, :create]
  before_action :set_dose, only: [:destroy]

  def index
  end

  def show
    @dose = @doses.find(params[:id])
  end

  def new
    @dose = @doses.new
  end

  def create
    @dose = @doses.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: "Dose was successfully added."
    else
      render 'new'
    end
  end

  def destroy
    @dose = @doses.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: 'Dose was successfully destroyed.'
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = @cocktail.doses
  end

  def set_dose
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @doses = @cocktail.doses
  end


  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end

#            Prefix Verb   URI Pattern                                 Controller#Action
#    cocktail_doses GET    /cocktails/:cocktail_id/doses(.:format)     doses#index
#                   POST   /cocktails/:cocktail_id/doses(.:format)     doses#create
# new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format) doses#new
#     cocktail_dose GET    /cocktails/:cocktail_id/doses/:id(.:format) doses#show
#                   DELETE /cocktails/:cocktail_id/doses/:id(.:format) doses#destroy
#         cocktails GET    /cocktails(.:format)                        cocktails#index
#                   POST   /cocktails(.:format)                        cocktails#create
#      new_cocktail GET    /cocktails/new(.:format)                    cocktails#new
#     edit_cocktail GET    /cocktails/:id/edit(.:format)               cocktails#edit
#          cocktail GET    /cocktails/:id(.:format)                    cocktails#show
#                   PATCH  /cocktails/:id(.:format)                    cocktails#update
#                   PUT    /cocktails/:id(.:format)                    cocktails#update
#                   DELETE /cocktails/:id(.:format)                    cocktails#destroy



# doses are unique couples of ingredient & cocktail
# which means there is just 1 of every dose, hence we can find by the ID
# doses are not used by multiple cocktails, only by single ones.

# just use Dose.find to set the dose. Get the cocktail through dose.cocktail!
# happy rebecca!
# yeeey
