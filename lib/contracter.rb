require "contracter/contract"

class Contracter
    def self.build &block
        c = Contract.new
        c.instance_eval(&block)

        t = (c.instance_variable_get("@template_path") or "#{Gem.datadir}/template.md")
        self.fill_template(File.read(t), c)
    end

private
    def self.fill_template t, c
        c.instance_variables.map(&:to_s).each do |v|
            t.gsub!(/\[#{Regexp.quote(v.gsub("@", ""))}\]/, c.instance_variable_get(v))
        end
        t.gsub(/\[\w+?\]/, "MISSING")
    end
end
