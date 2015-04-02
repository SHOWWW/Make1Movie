#
# Main Container for all of Byebug's code
#
module Byebug
  #
  # Enters byebug right before (or right after if _before_ is false) return
  # events occur. Before entering byebug the init script is read.
  #
  def self.attach
    return errmsg('Byebug already started. Ignoring `byebug` call.') if started?

    setup_cmd_line_args

    start
    run_init_script

    current_context.step_out(2, true)
  end
end

#
# Adds a `byebug` method to the Kernel module.
#
# Dropping a `byebug` call anywhere in your code, you get a debug prompt.
#
module Kernel
  def byebug
    Byebug.attach
  end

  alias_method :debugger, :byebug
end
