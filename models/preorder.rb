class Preorder

    attr_reader(:name, :address, :quantity, :size)
    def initialize(options)
        @name = options['name']
        @address = options['address']
        @quantity = options['quantity'].to_i()
        @size = options['size'].to_i()
    end

    def save()
        sql = "INSERT INTO preorders (name, address, quantity, size) VALUES ('#{@name}', '#{@address}', #{@quantity}, #{@size});"
        SQLRun.exec(sql)
        return nil
    end

    def self.all()
        sql = "SELECT * FROM preorders;"
        return Preorder.create(sql)
    end

    def self.create(sql)
        result = SQLRun.exec(sql)
        return result.map { |e| Preorder.new(e)  }
    end

end
