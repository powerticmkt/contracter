Dir["#{File.dirname(__FILE__)}/contracter/**/*.rb"].each { |e| require e unless e == 'version.rb' }

class Contracter
    def self.build_from(path = "#{File.expand_path('..', File.dirname(__FILE__))}/data/contracter/template.md", &block)
        c = Contract.new File.read(path, :encoding => "UTF-8")
        c.load_params
        c.instance_eval(&block)
        c.replace_params

        c.template
    end
end
