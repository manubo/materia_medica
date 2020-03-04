namespace :app do
  namespace :assets do
    task :build do
      run_locally do
        execute :npm, :run, :build
      end
    end

    task :upload do
      run_locally do
        roles(:web).each do |host|
          execute :rsync, "-avzr", "--exclude='*.map'", fetch(:assets_output_path), "#{host.user}@#{host.hostname}:#{File.join(fetch(:deploy_to), "current/public/")}"
        end
      end
    end
  end

  namespace :server do
    task :restart do
      on roles(:app) do
        sudo :systemctl, :restart, "matmed.service"
      end
    end
  end
end
