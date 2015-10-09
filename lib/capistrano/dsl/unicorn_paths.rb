module Capistrano
  module DSL
    module UnicornPaths

      def unicorn_default_config_file
        shared_path.join('config/unicorn.rb')
      end

      def unicorn_default_launchd_plist
        "~/Library/LaunchAgents/apps.#{fetch(:application)}.unicorn.plist"
      end

      def unicorn_default_pid_file
        shared_path.join('tmp/pids/unicorn.pid')
      end

      def unicorn_log_dir
        shared_path.join('log')
      end

      def unicorn_log_file
        unicorn_log_dir.join('unicorn.stdout.log')
      end

      def unicorn_error_log_file
        unicorn_log_dir.join('unicorn.stderr.log')
      end

      def unicorn_default_logrotate_config_file
        "/usr/local/etc/logrotate.d/#{fetch(:application)}_production"
      end
    end
  end
end
