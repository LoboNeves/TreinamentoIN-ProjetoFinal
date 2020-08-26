class JsonWebToken
    VARIAVEL = "c3986bcadb4bd5ef0bf53b732bfbebc58444209ff8a842f55435eb94976e8c5e2eb141be2d0d2541fd68c66bc8cc35b0560763a7097f074bcb1cc349d085b038"
    def self.encode(user)
        JWT.encode({user_id: user.id}, VARIAVEL)
    end

    def self.decode(token)
        begin
           user_id = JWT.decode(token, VARIAVEL)[0]['user_id']
           return User.find(user_id)
        rescue => exception
            return nil
        end
    end
end