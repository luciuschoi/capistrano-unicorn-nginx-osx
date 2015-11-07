module Capistrano
  module DSL
    module NginxPaths

      def nginx_config_file
        "#{fetch(:nginx_location)}/servers/#{fetch(:nginx_config_name)}"
      end

      def nginx_service_path
        '/usr/local/bin/nginx'
      end

      def nginx_default_pid_file
        '/usr/local/run/nginx.pid'
      end

      # ssl related files
      def nginx_default_ssl_cert_file_name
        "#{fetch(:nginx_server_name)}.crt"
      end

      def nginx_default_ssl_cert_key_file_name
        "#{fetch(:nginx_server_name)}.key"
      end

      def nginx_default_ssl_cert_file_path
        "/etc/ssl/certs/"
      end

      def nginx_default_ssl_cert_key_file_path
        "/etc/ssl/private/"
      end

      def nginx_ssl_cert_file
        "#{fetch(:nginx_ssl_cert_path)}#{fetch(:nginx_ssl_cert)}"
      end

      def nginx_ssl_cert_key_file
        "#{fetch(:nginx_ssl_cert_key_path)}#{fetch(:nginx_ssl_cert_key)}"
      end

      # log files
      def nginx_access_log_file
        "/var/log/nginx/#{fetch(:nginx_config_name)}.access.log"
      end

      def nginx_error_log_file
        "/var/log/nginx/#{fetch(:nginx_config_name)}.error.log"
      end

    end
  end
end
