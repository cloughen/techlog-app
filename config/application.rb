require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module TechlogApp
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g|
      g.assets false # CSS, JavaScriptファイルを自動生成しない
      g.helper false # helperファイルを自動生成しない
      g.test_framework :rspec,
        fixtures: false, # テストDBにレコードを作るfixtureの作成をスキップ(FactoryBotを使用するため)
        view_specs: false, # ビューファイル用のスペックを作成しない
        helper_specs: false, # ヘルパーファイル用のスペックを作成しない
        routing_specs: false # routes.rb用のスペックファイルを作成しない
    end

    config.i18n.default_locale = :ja
    
    # エラーメッセージに属性名を自動で結合しない（スペース問題を解決）
    config.active_model.i18n_customize_full_message = true
  end
end
