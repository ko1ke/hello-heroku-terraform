terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "5.0.2"
    }
  }
}

provider "heroku" {
    email   = "${var.email}"
    api_key = "${var.api-key}"
}

resource "heroku_app" "app" {
  name = "${var.app-name}"
  region = "us"
  # (Optional) not necessary if you are only using assets precompile.used only assets:precompile
  buildpacks = ["heroku/nodejs", "heroku/ruby"]
  # (Optional) enviroment variables.
  # config_vars = {
  #   FOOBAR = "baz"
  # }
  # sensitive_config_vars = {
  #   SENSITIVE_FOO_BAR = "baz"
  # }
}