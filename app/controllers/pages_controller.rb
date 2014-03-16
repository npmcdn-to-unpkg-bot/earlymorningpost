class PagesController < ApplicationController
  def home
    @title = "Home"
    @home_page = true
    @news = News.all
  end

  def technology
    @title = "Technology"
    @category = select_category
    @news = @category.news
    @home_page = true
  end

  def sports
    @title = "Sports"
    @category = select_category
    @news = @category.news
    @home_page = true
  end

  def world
    @title = "World"
    @category = select_category
    @news = @category.news
    @home_page = true
  end

  def entertainment
    @title = "Entertainment"
    @category = select_category
    @news = @category.news
    @home_page = true
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact Us"
  end

  private

    def select_category
      Category.find_by_name(@title)
    end
end
