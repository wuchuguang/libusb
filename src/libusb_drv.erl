%% Generated by eapi (DO NOT EDIT)
-module(libusb_drv).

-export([start_link/0, start/0, stop/0]).
-export([start_link/1, start/1]).
-export([get_configuration/1]).
-export([open/1]).
-export([set_configuration/2]).
-export([set_debug/1]).
-export([set_interface_alt_setting/3]).
-export([get_config_descriptor_by_value/2]).
-export([get_max_packet_size/2]).
-export([get_max_iso_packet_size/2]).
-export([close/1]).
-export([claim_interface/2]).
-export([release_interface/2]).
-export([reset_device/1]).
-export([control_transfer_write/7]).
-export([bulk_transfer_write/4]).
-export([interrupt_transfer_write/4]).
-export([iso_transfer_write/6]).
-export([kernel_driver_active/2]).
-export([get_device_list/0]).
-export([open_device_with_vid_pid/2]).
-export([clear_halt/2]).
-export([control_transfer_read/7]).
-export([bulk_transfer_read/4]).
-export([interrupt_transfer_read/4]).
-export([iso_transfer_read/6]).
-export([get_device_address/1]).
-export([get_device_descriptor/1]).
-export([get_active_config_descriptor/1]).
-export([get_config_descriptor/2]).
-export([get_bus_number/1]).
-export([cancel_transfer/1]).
-export([detach_kernel_driver/2]).
-export([attach_kernel_driver/2]).
-include_lib("eapi/include/cbuf.hrl").
-include("../include/libusb.hrl").
-include("libusb_drv.hrl").

start_link() ->
  start_link([]).

start_link(Opts) ->
  eapi_drv:start_link([
    {srv_name, libusb_srv},
    {prt_name, libusb_prt},
    {reg_name, libusb_reg},
    {driver_name, "libusb_drv"},
    {app, libusb} | Opts]).

start() ->
  start([]).

start(Opts) ->
  eapi_drv:start([
    {srv_name, libusb_srv},
    {prt_name, libusb_prt},
    {reg_name, libusb_reg},
    {driver_name, "libusb_drv"},
    {app, libusb}|Opts]).

stop() ->
  eapi_drv:stop(libusb_srv).

set_debug(Level) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_SET_DEBUG, [<<?int_t((Level))>>]).
get_device_list() -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_DEVICE_LIST, []).
get_configuration(Dev_handle) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_CONFIGURATION, [<<?pointer_t((Dev_handle))>>]).
get_device_descriptor(Dev) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_DEVICE_DESCRIPTOR, [<<?pointer_t((Dev))>>]).
get_active_config_descriptor(Dev) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_ACTIVE_CONFIG_DESCRIPTOR, [<<?pointer_t((Dev))>>]).
get_config_descriptor(Dev,Config_index) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_CONFIG_DESCRIPTOR, [<<?pointer_t((Dev))>>,<<?uint8_t((Config_index))>>]).
get_config_descriptor_by_value(Dev,ConfigurationValue) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_CONFIG_DESCRIPTOR_BY_VALUE, [<<?pointer_t((Dev))>>,<<?uint8_t((ConfigurationValue))>>]).
get_bus_number(Dev) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_BUS_NUMBER, [<<?pointer_t((Dev))>>]).
get_device_address(Dev) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_DEVICE_ADDRESS, [<<?pointer_t((Dev))>>]).
get_max_packet_size(Dev,EndPoint) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_MAX_PACKET_SIZE, [<<?pointer_t((Dev))>>,<<?uint8_t((EndPoint))>>]).
get_max_iso_packet_size(Dev,EndPoint) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_GET_MAX_ISO_PACKET_SIZE, [<<?pointer_t((Dev))>>,<<?uint8_t((EndPoint))>>]).
open(Dev) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_OPEN, [<<?pointer_t((Dev))>>]).
close(Dev_handle) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_CLOSE, [<<?pointer_t((Dev_handle))>>]).
set_configuration(Dev_handle,Configuration) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_SET_CONFIGURATION, [<<?pointer_t((Dev_handle))>>,<<?int_t((Configuration))>>]).
claim_interface(Dev_handle,Iface) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_CLAIM_INTERFACE, [<<?pointer_t((Dev_handle))>>,<<?int_t((Iface))>>]).
release_interface(Dev_handle,Iface) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_RELEASE_INTERFACE, [<<?pointer_t((Dev_handle))>>,<<?int_t((Iface))>>]).
open_device_with_vid_pid(Vendor_id,Product_id) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_OPEN_DEVICE_WITH_VID_PID, [<<?uint16_t((Vendor_id))>>,<<?uint16_t((Product_id))>>]).
set_interface_alt_setting(Dev_handle,Interface_number,Alternate_setting) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_SET_INTERFACE_ALT_SETTING, [<<?pointer_t((Dev_handle))>>,<<?int_t((Interface_number))>>,<<?int_t((Alternate_setting))>>]).
clear_halt(Dev_handle,Endpoint) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_CLEAR_HALT, [<<?pointer_t((Dev_handle))>>,<<?int_t((Endpoint))>>]).
reset_device(Dev_handle) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_RESET_DEVICE, [<<?pointer_t((Dev_handle))>>]).
control_transfer_write(Dev_handle,Request_type,Request,Value,Index,Data,Timeout) -> 
  Data__size = byte_size(Data),
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_CONTROL_TRANSFER_WRITE, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Request_type))>>,<<?uint8_t((Request))>>,<<?uint16_t((Value))>>,<<?uint16_t((Index))>>,<<?uint32_t(Data__size),(Data)/binary>>,<<?uint_t((Timeout))>>]).
control_transfer_read(Dev_handle,Request_type,Request,Value,Index,Length,Timeout) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_CONTROL_TRANSFER_READ, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Request_type))>>,<<?uint8_t((Request))>>,<<?uint16_t((Value))>>,<<?uint16_t((Index))>>,<<?uint16_t((Length))>>,<<?uint_t((Timeout))>>]).
bulk_transfer_write(Dev_handle,Endpoint,Data,Timeout) -> 
  Data__size = byte_size(Data),
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_BULK_TRANSFER_WRITE, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Endpoint))>>,<<?uint32_t(Data__size),(Data)/binary>>,<<?uint_t((Timeout))>>]).
bulk_transfer_read(Dev_handle,Endpoint,Length,Timeout) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_BULK_TRANSFER_READ, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Endpoint))>>,<<?int_t((Length))>>,<<?uint_t((Timeout))>>]).
interrupt_transfer_write(Dev_handle,Endpoint,Data,Timeout) -> 
  Data__size = byte_size(Data),
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_INTERRUPT_TRANSFER_WRITE, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Endpoint))>>,<<?uint32_t(Data__size),(Data)/binary>>,<<?uint_t((Timeout))>>]).
interrupt_transfer_read(Dev_handle,Endpoint,Length,Timeout) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_INTERRUPT_TRANSFER_READ, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Endpoint))>>,<<?int_t((Length))>>,<<?uint_t((Timeout))>>]).
iso_transfer_write(Dev_handle,Endpoint,Data,Num_iso_packets,Packet_size,Timeout) -> 
  Data__size = byte_size(Data),
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_ISO_TRANSFER_WRITE, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Endpoint))>>,<<?uint32_t(Data__size),(Data)/binary>>,<<?int_t((Num_iso_packets))>>,<<?uint_t((Packet_size))>>,<<?uint_t((Timeout))>>]).
iso_transfer_read(Dev_handle,Endpoint,Length,Num_iso_packets,Packet_size,Timeout) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_ISO_TRANSFER_READ, [<<?pointer_t((Dev_handle))>>,<<?uint8_t((Endpoint))>>,<<?int_t((Length))>>,<<?int_t((Num_iso_packets))>>,<<?uint_t((Packet_size))>>,<<?uint_t((Timeout))>>]).
cancel_transfer(Ref) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_CANCEL_TRANSFER, [<<?uint32_t((Ref))>>]).
kernel_driver_active(Dev_handle,Interface) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_KERNEL_DRIVER_ACTIVE, [<<?pointer_t((Dev_handle))>>,<<?int_t((Interface))>>]).
detach_kernel_driver(Dev_handle,Interface) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_DETACH_KERNEL_DRIVER, [<<?pointer_t((Dev_handle))>>,<<?int_t((Interface))>>]).
attach_kernel_driver(Dev_handle,Interface) -> 
 eapi_drv:command(libusb_prt,?LIBUSB_CMD_ATTACH_KERNEL_DRIVER, [<<?pointer_t((Dev_handle))>>,<<?int_t((Interface))>>]).
