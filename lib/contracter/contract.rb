class Contract
    def company c
        @company = c
    end

    def client c
        @client = c
    end

    def client_address a
        @client_address = a
    end

    def service s
        @service = s
    end

    def estimated_total t
        @estimated_total = t
    end

    def payment_details d
        @payment_details = d
    end

    def payment_schedule s
        @payment_schedule = s
    end

    def date d
        @date = d
    end

    def template_path p
        @template_path = p
    end
end
