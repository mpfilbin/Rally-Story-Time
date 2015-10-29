# Interesting Patterns in the GUI tests

# 1. Determing inheritence at runtime /Users/pairing/projects/alm/alm-tool-guitest/spec/lib/drivers/pages/search_page.rb
# 2. Defining classes at runtime /Users/pairing/projects/alm/alm-tool-guitest/spec/lib/drivers/pages/page.rb
# 2. Mixin pattern in the wild /Users/pairing/projects/alm/alm-tool-guitest/spec/lib/drivers/pages/detail_associations.rb
# 3. Symbol Interpolation /Users/pairing/projects/alm/alm-tool-guitest/spec/lib/drivers/chooser/predecessor_chooser.rb
# 4. Scope change with instance_exec and instance_eval /Users/pairing/projects/alm/alm-tool-guitest/spec/lib/drivers/dashboard/new/dashboard.rb
# 5. Method aliasing /Users/pairing/projects/alm/alm-tool-guitest/spec/lib/rally_rest_api_facade.rb


# Fallback fetch on Hashes
# Symbol -> Proc iterator shortcut
# Dynamically defining methods

# class Person
#   attr_accessor :name, :age
#
#   def initialize(name, age)
#     @name  = name
#     @age = age
#   end
#
# end
#
# module Lockable
#
#   def locked?
#     @locked ||= false
#   end
#
#   def lock!
#     @locked = true
#   end
#
#   def self.extended(mixin_target)
#     # prevent assignment through attribute mutators
#     mixin_target.instance_variables.each do |variable|
#
#       attr_mutator = "#{variable}="[1..-1].to_sym #=> :name=
#
#       if mixin_target.respond_to? attr_mutator
#         original_method = mixin_target.method(attr_mutator)
#         override = ->(*args) { return if locked?; original_method.call(*args)}
#         self.send(:define_method, attr_mutator, override)
#       end
#
#     end
#   end
# end
