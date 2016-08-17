class Computer
@@users = {}

    def initialize(username, password)
        @username = username
        @password = password
        @@users[username] = password
        @files = {}
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} was created by #{username} at #{time}"
    end
    
    def Computer.get_users
        return @@users
    end
end
