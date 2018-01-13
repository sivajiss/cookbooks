include_recipe "microsoft_azure"
microsoft_azure = data_bag_item("microsoft_azure", "main")

microsoft_azure_storage_account 'teststoragesujith' do
  management_certificate microsoft_azure['management_certificate']
  subscription_id microsoft_azure['subscription_id']
  location 'West US'
  action :create
end
