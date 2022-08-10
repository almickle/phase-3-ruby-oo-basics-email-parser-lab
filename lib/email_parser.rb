# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(string)
        @string = string
        @emails = []
    end
    def parse
        @string.split(", ").each do |email|
            @emails.push(email.split)
        end
        @emails = @emails.join(" ").split.uniq
    end
end

EmailAddressParser.new("john@doe.com, person@somewhere.org michael@gmail.com michael@gmail.com").parse
