class CarsController < ApplicationController

  def create

    unless (params[:year].nil?) || (params[:make].nil?)
      # flash.now[:notice] = 'Car is a ' + session[:year] + ' ' + session[:make]

      if params.has_key?(:make) && params[:make].strip.empty?
        # User has entered a valid name
      flash.now[:alert] = "Please enter a valid car make."

      # elsif params[:year].is_a Integer = false
      # flash.now[:alert] = 'Please enter a valid year'

      elsif params.has_key?(:year) && params[:year].strip.empty?
      flash.now[:alert] = "Please enter valid year."

      else
        random = Car.new(params[:make], params[:year])
        session[:random] = random.to_yaml

        redirect_to '/cars/status'
      end
    end
  end

  def status
    @random = YAML.load(session[:random])
    render 'status.html.erb'
  end

  def speed
    @speed = YAML.load(session[:random])
  end

  def accelerate
    @random = YAML.load(session[:random])
    @random.accelerate
    session[:random] = @random.to_yaml
    render 'status.html.erb'
  end

  def brake
    @random = YAML.load(session[:random])
    @random.brake
    session[:random] = @random.to_yaml
    render 'status.html.erb'
  end

  def lightsOn
    @random = YAML.load(session[:random])
    @random.lightsOn
    session[:random] = @random.to_yaml
    render 'status.html.erb'
  end

  def lights
    @random = YAML.load(session[:random])
    @random.lights
    session[:random] = @random.to_yaml
    render 'status.html.erb'
  end

  def ebrake
    @random = YAML.load(session[:random])
    @random.setEbreak(params[:ebrake])
    session[:random] = @random.to_yaml
    render 'status.html.erb'
  end

  def color
    @random = YAML.load(session[:random])
    @random.setColor(params[:color])
    session[:random] = @random.to_yaml
    render 'status.html.erb'
  end
end
