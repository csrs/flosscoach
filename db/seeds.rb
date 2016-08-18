  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
  #
  # Examples:
  #
  #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  #   Mayor.create(name: 'Emanuel', city: cities.first)

  # Lenguages
  Language.create([
    {
      :name => "Ruby",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    },
    {
      :name => "Python",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    },
    {
      :name => "C#",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    }])

  OperationalSystem.create([
    {
      :name => "Windows",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    },
    {
      :name => "Linux",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    }])

  Project.create([
    {
      :name => "FLOSSCoach",
      :description => "Portal de apoio a novatos com dificuldades em adentrar à comunidade de projetos de
                       software livre",
      :project_page_url => "https://gitlab.com/MES2016/flosscoach",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00"),
      :user_id => '1',
      :language_id => '1',
      :tool_id => '1',
      :operational_system_id => '2',
      :about => "teste",
      :technical_skill => "habilidades tecnicas",
      :soft_skill => "habilidades em softwares",
      :contribution => "contribuições",
      :workspace_setup => "ambiente",
      :resource => "recursos",
      :documentation => "Wiki",
      :search_resource => "teste",
      :send_contribution => "teste",
      :link => "www.flosscoach.com",
      :image_url => "/app/assets/images/apple-touch-icon.png"
    },
    {
      :name => "UmProjeto",
      :description => "Exemplo de projeto",
      :project_page_url => "https://gitlab.com/",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00"),
      :user_id => '2',
      :language_id => '3',
      :tool_id => '1',
      :operational_system_id => '2',
      :about => "teste",
      :technical_skill => "habilidades tecnicas",
      :soft_skill => "habilidades em softwares",
      :contribution => "contribuições",
      :workspace_setup => "ambiente",
      :resource => "recursos",
      :documentation => "Wiki",
      :search_resource => "teste",
      :send_contribution => "teste",
      :link => "www.umprojeto.com",
      :image_url => "/app/assets/images/avatar.jpeg"
    }])

  Tool.create([
    {
      :name => "Tool 1",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    },
    {
      :name => "Tool 2",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00")
    }])

  User.create([
    {
      :name => "Admin",
      :birth => DateTime.parse("01/01/1990"),
      :email => "admin@email.com",
      :username => "admin",
      :password => "admin123",
      :password_confirmation => "admin123",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00"),
      :photo_url => "/app/assets/images/avatar.jpeg",
      :fb_token =>  "",
      :provider => "",
      :uid => "",
      :description => "teste"
    },
    {
      :name => "teste",
      :birth => DateTime.parse("01/01/1990"),
      :email => "teste@email.com",
      :username => "teste",
      :password => "teste123",
      :password_confirmation => "teste123",
      :created_at => DateTime.parse("09/01/2009 17:00"),
      :updated_at => DateTime.parse("09/01/2009 17:00"),
      :photo_url => "./app/assets/images/avatar.jpeg",
      :fb_token =>  "",
      :provider => "",
      :uid => "",
      :description => "teste"
    }])
