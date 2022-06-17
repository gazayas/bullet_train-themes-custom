module BulletTrain
  module Themes
    module Custom
      class Engine < ::Rails::Engine
        initializer "bullet_train.themes.custom.register" do |app|
          BulletTrain::Themes.themes[:custom] = BulletTrain::Themes::Custom::Theme.new
          BulletTrain.linked_gems << "bullet_train-themes-custom"
        end
      end
    end
  end
end
