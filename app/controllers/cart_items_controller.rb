class CartItemsController < ApplicationController
  def create
    @cart_item = CartItem.new(cart_id: @cart.id, item_id: params[:item_id])
    if @cart_item.save
      flash[:notice] = 'Produit ajouté au panier'
      redirect_to item_path(params[:item_id])
    else
      flash[:error] = "Impossible d'ajouter le produit au panier"
      redirect_to items_path
    end
  end
end