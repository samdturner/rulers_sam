require "rulers_sam/version"

module RulersSam
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
        ['Hey, it worked for real ;)']]
    end
  end
end
