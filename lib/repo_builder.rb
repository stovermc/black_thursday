require_relative 'merchant_repository'
require_relative 'item_repository'
require_relative 'invoice_repository'
require_relative 'invoice_item_repository'

class RepoBuilder
  def initialize(sales_engine)
    @sales_engine = sales_engine
  end

  def build_repos(arry_objects)
    [ MerchantRepository.new(arry_objects[:merchant], @sales_engine),
      ItemRepository.new(arry_objects[:item], @sales_engine),
      InvoiceRepository.new(arry_objects[:invoice], @sales_engine),
      InvoiceItemRepository.new(arry_objects[:invoice_item], @sales_engine) ]
  end
end
