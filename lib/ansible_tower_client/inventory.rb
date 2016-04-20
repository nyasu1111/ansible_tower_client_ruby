module AnsibleTowerClient
  class Inventory < BaseModel
    def self.endpoint
      "inventories".freeze
    end

    def root_groups
      api.inventories.find_all_by_url(related['root_groups'])
    end
  end
end
