defmodule Main do
  def run do
    file_path = "test.ts"
    pid_list = Rekry.parse_file(file_path)
    IO.inspect(pid_list)
  end
end
