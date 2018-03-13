# frozen_string_literal: true
require 'appium_lib'
require 'cucumber'
require 'yaml'
require 'pry'
require_relative 'world_screen.rb'

World(Screen)

APP_PATH = File.join(File.dirname(__FILE__), '/app/ipa/SimpleCalculator.app')
SERVER_URL = 'http://localhost:4723/wd/hub'
PORT = 4723
TWENTY_SECONDS = 20

After do
  $driver.driver_quit
end

Before do
  def opts
    {
      caps: {
        deviceName: 'iPhone 6',
        platformVersion: '11.2',
        platformName: 'iOS',
        app: APP_PATH,
        newCommandTimeout: '3600',
        autoAcceptAlerts: true,
        xcodeOrgId: 'xcode Org ID',
        xcodeSigningId: 'iPhone Developer'
      },
      appium_lib:
                      { wait: TWENTY_SECONDS,
                        server_url: SERVER_URL,
                        port: PORT }
    }
    end
end