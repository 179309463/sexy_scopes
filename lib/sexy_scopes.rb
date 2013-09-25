require 'sexy_scopes/version'
require 'active_support/dependencies/autoload'
require 'active_support/lazy_load_hooks'

module SexyScopes
  def self.extend_expression(expression)
    expression.extend(Arel::ExpressionMethods)
  end
  
  def self.extend_predicate(predicate)
    predicate.extend(Arel::PredicateMethods)
  end
end

if defined? Rails::Railtie
  require 'sexy_scopes/railtie'
else
  ActiveSupport.on_load :active_record do
    require 'sexy_scopes/active_record'
  end
end
