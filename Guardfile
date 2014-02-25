group :rspec do

  guard 'rspec', all_on_start: false,
                 all_after_pass: false,
                 failed_mode: :none,
                 spec_paths: ['spec'],
                 cmd: 'zeus rspec --color' do
    watch( %r{^spec/.+_spec\.rb$} )
    watch( %r{^lib/(.+)\.rb$} )     { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch( 'spec/spec_helper.rb' )  { "spec" }

    # Rails example
    watch( %r{^spec/.+_spec\.rb$} )
    watch( %r{^app/(.+)\.rb$} )                           { |m| "spec/#{m[1]}_spec.rb" }
    watch( %r{^app\/(.+\.(erb|haml|rabl))$} )             { |m| "spec/#{m[1]}_spec.rb" }
    watch( %r{^lib/(.+)\.rb$} )                           { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch( %r{^app/controllers/(.+)_(controller)\.rb$} )  { |m|
      ["spec/routing/#{m[1]}_routing_spec.rb",
       "spec/controllers/#{m[1]}_controller_spec.rb",
       "spec/requests/#{m[1]}",
       "spec/acceptance/#{m[1]}_spec.rb"]
    }
    # watch( %r{^spec/support/(.+)\.rb$} )                  { "spec" }
    watch( 'spec/spec_helper.rb' )                        { "spec" }
    watch( 'config/routes.rb' )                           { "spec/routing" }
    watch( 'app/controllers/application_controller.rb' )  { "spec/controllers" }

    # Capybara request specs
    watch( %r{^spec/requests/(.+)\.rb$} )                 { |m| "spec/requests/#{m[1]}_spec.rb" }
    watch( %r{^app/views/(.+)/.*\.(erb|haml)$} )          { |m| "spec/requests/#{m[1]}_spec.rb" }
  end

end
