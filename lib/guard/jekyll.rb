require 'guard/compat/plugin'

require 'jekyll'

module Guard
  class Jekyll < Plugin
    def start
      Compat::UI.info 'Guard::Jekyll is watching for file changes'
      rebuild
    end

    def run_all
      rebuild
    end

    def run_on_modifications(paths)
      rebuild
    end

    private

    # rebuilds the entire jekyll site
    #
    def rebuild
      Compat::UI.info 'Guard::Jekyll regenerating'

      site = ::Jekyll::Site.new(::Jekyll.configuration(options))
      site.process

      Compat::UI.info 'Guard::Jekyll done.'
    rescue Exception => e
      Compat::UI.error "Guard::Jekyll failed: #{e}"
      throw :task_has_failed
    end
  end
end
