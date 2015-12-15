class Contract
    attr_accessor :template

    def params
        @params ||= Hash.new
    end

    def initialize p
        @template = p
    end

    def method_missing(method_sym, *args)
        raise ContractError, "Cannot find [#{method_sym}] in template." unless self.params.has_key?(method_sym)
        raise ContractError, "Must provide only one value for [#{method_sym}]." unless args.length == 1
        self.params[method_sym] = args.first
    end

    def load_params
        self.template.scan(/\[(\w+?)\]/).flatten.each { |p| self.params[p.to_sym] = nil }
    end

    def replace_params
        raise ContractError, "Missing values for #{self.params.select { |k, v| v.nil? }.keys.map { |e| "[#{e}]"}.join ', '}." if self.params.has_value? nil
        self.params.each { |k, v| self.template.gsub!(/\[#{Regexp.quote(k.to_s)}\]/, v) }
    end
end
