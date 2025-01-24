{ pkgs, lib, config, inputs, ... }:

{
  cachix.enable = false;

  # https://devenv.sh/basics/
  env.GREET = "devenv";


  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  # https://devenv.sh/processes/
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/services/
  # services.postgres.enable = true;



  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/

  # https://devenv.sh/packages/
  packages = with pkgs; [ git wp-cli ];

  services.mysql.enable = true;
  services.mysql.package = pkgs.mariadb;
  services.mysql.initialDatabases = [{ name = "wordpress"; }];
  services.mysql.ensureUsers = [
    {
      name = "wordpress";
      password = "wordpress";
      ensurePermissions = { 
        "wordpress.*" = "ALL PRIVILEGES"; 
      };

    }
    {
      name = "aporia";
      password = "whywhywhy";
      ensurePermissions = { 
        "aporia.*" = "ALL PRIVILEGES"; 
      };

    }

  ];

  languages.javascript.enable = true;
  languages.php.enable = true;

  # rest api error. idk if it's because we put wordpress in a subdir or what
  # but the test was using the wrong endpoint (didn't suffix url with "/wp")
  processes.wordpress.exec = "wp server";

  # process.manager.before = "npm install";
  # processes.wordpress-assets.exec = "npm run dev";


}
