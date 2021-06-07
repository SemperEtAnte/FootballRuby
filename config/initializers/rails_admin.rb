RailsAdmin.config do |config|
  config.main_app_name = ["Футбол", "Админ панель"]
  config.model 'Country' do
    list do
      exclude_fields :short_name
    end
  end
  config.model "FootballClub" do
    include_fields :id
    field :country do
      searchable :short_name
      pretty_value do
        value.try(:short_name)
      end
    end
    include_all_fields
    edit do
      exclude_fields :O
    end
    create do
      exclude_fields :O
    end
  end

  config.actions do
    dashboard # mandatory
    index # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
