defmodule Rekry do
  @packet_size 188
  @sync_byte 0x47

  def parse_file(file_name) do
    {:ok, file} = File.open(file_name, [:binary])
    result = parse_packets(file, [])
    File.close(file)
    result
  end

  defp parse_packets(file, pids) do
    case IO.binread(file, @packet_size) do
      :eof -> Enum.reverse(pids)

      <<@sync_byte, _flags::3, pid::13, _rest::bitstring>> ->
        parse_packets(file, [pid | pids])

      _ ->
        IO.puts("Invalid sync byte or packet, stopping parsing")
        Enum.reverse(pids)
    end
  end
end
