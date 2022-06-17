require "bullet_train/themes/custom/version"
require "bullet_train/themes/custom/engine"
require "bullet_train/themes/light"

module BulletTrain
  module Themes
    module Custom
      mattr_accessor :color, default: :blue
      class Theme < BulletTrain::Themes::Light::Theme
        def directory_order
          ["custom"] + super
        end
      end
    end
  end
end
