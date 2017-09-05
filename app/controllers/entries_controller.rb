# frozen_string_literal: true

class EntriesController < ApplicationController
  include Sessionable

  def index
    @entries = Entry.where(is_hidden: false).order(created_at: :desc).page(params[:page])
  end

  def new
    @entry = @user.entries.build
  end

  def show; end

  def create
    if @user.entries.build(entry_params).save
      head 201
    end
  end

  def edit
    @entry = Entry.find_by(id: params[:id])
    return head 404 unless @entry
    render :edit
  end

  def update
    return head 204 if Entry.find(params[:id]).update(entry_params)
    head 400
  end

  def destroy
    entry = @user.entries.find_by(id: params[:id])
    if entry
      entry.destroy
      head 200
      return
    end
    head 400
  end

  private

  def entry_params
    params.require(:entry).permit(:id, :title, :body, :is_hidden)
  end
end
