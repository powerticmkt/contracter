class Contract
    def method_missing(name_sym, *args)
        if args.length == 1
            self.instance_variable_set "@#{name_sym.to_s}", *args
        elsif args.length > 1
            self.instance_variable_set "@#{name_sym.to_s}", args.join('\n')
        else
            raise ArgumentError, 'Value not passed to template.'
        end
    end

    def template_path p
        @template_path = p
    end
end
