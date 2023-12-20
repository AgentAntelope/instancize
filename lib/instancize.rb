module Instancize
  def self.from_binding(binding)
    locals = binding.local_variables
    locals.each do |variable|
      local = binding.local_variable_get(variable)
      binding.receiver.instance_variable_set("@#{variable}", local)
    end
  end
end
