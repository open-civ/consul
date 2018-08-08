class PersonnummerApi

  def call(document_type, document_number)
    Response.new(document_type, document_number)
  end

  class Response
    def initialize(document_type, document_number)
      @document_type = document_type
      @document_number = document_number
      if personnummer?
        @personnummer = Personnummer.new(document_number)
      end
    end

    def valid?
      if personnummer?
        @personnummer.valid?
      else
        true
      end
    end

    def date_of_birth
      if personnummer?
        @personnummer.born
      else
        nil
      end
    end

    def region
      @personnummer.region
    end

    def gender
      if @personnummer.female?
        "female"
      else
        "male"
      end
    end

    private

      def personnummer?
        @document_type.to_s == "1"
      end
  end
end
