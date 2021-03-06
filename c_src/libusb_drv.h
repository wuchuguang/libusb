// Generated by eapi (DO NOT EDIT)
#ifndef __LIBUSB_DRV_H__
#define __LIBUSB_DRV_H__

extern int e_struct_libusb_device_descriptor(eapi_ctx_t* ctx, cbuf_t* c_out, struct libusb_device_descriptor *ptr);
extern int e_struct_libusb_endpoint_descriptor(eapi_ctx_t* ctx, cbuf_t* c_out, struct libusb_endpoint_descriptor *ptr);
extern int e_struct_libusb_interface_descriptor(eapi_ctx_t* ctx, cbuf_t* c_out, struct libusb_interface_descriptor *ptr);
extern int e_struct_libusb_interface(eapi_ctx_t* ctx, cbuf_t* c_out, struct libusb_interface *ptr);
extern int e_struct_libusb_config_descriptor(eapi_ctx_t* ctx, cbuf_t* c_out, struct libusb_config_descriptor *ptr);
#define LIBUSB_DRV_CMD_SET_DEBUG 1
extern void libusb_drv_impl_set_debug(eapi_ctx_t* ctx,cbuf_t* c_out,int level);
#define LIBUSB_DRV_CMD_GET_DEVICE_LIST 2
extern void libusb_drv_impl_get_device_list(eapi_ctx_t* ctx,cbuf_t* c_out);
#define LIBUSB_DRV_CMD_GET_CONFIGURATION 3
extern void libusb_drv_impl_get_configuration(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle);
#define LIBUSB_DRV_CMD_GET_DEVICE_DESCRIPTOR 4
extern void libusb_drv_impl_get_device_descriptor(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev);
#define LIBUSB_DRV_CMD_GET_ACTIVE_CONFIG_DESCRIPTOR 5
extern void libusb_drv_impl_get_active_config_descriptor(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev);
#define LIBUSB_DRV_CMD_GET_CONFIG_DESCRIPTOR 6
extern void libusb_drv_impl_get_config_descriptor(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev,uint8_t config_index);
#define LIBUSB_DRV_CMD_GET_CONFIG_DESCRIPTOR_BY_VALUE 7
extern void libusb_drv_impl_get_config_descriptor_by_value(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev,uint8_t configurationValue);
#define LIBUSB_DRV_CMD_GET_BUS_NUMBER 8
extern void libusb_drv_impl_get_bus_number(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev);
#define LIBUSB_DRV_CMD_GET_DEVICE_ADDRESS 9
extern void libusb_drv_impl_get_device_address(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev);
#define LIBUSB_DRV_CMD_GET_MAX_PACKET_SIZE 10
extern void libusb_drv_impl_get_max_packet_size(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev,uint8_t endPoint);
#define LIBUSB_DRV_CMD_GET_MAX_ISO_PACKET_SIZE 11
extern void libusb_drv_impl_get_max_iso_packet_size(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev,uint8_t endPoint);
#define LIBUSB_DRV_CMD_OPEN 12
extern void libusb_drv_impl_open(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device* dev);
#define LIBUSB_DRV_CMD_CLOSE 13
extern void libusb_drv_impl_close(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle);
#define LIBUSB_DRV_CMD_SET_CONFIGURATION 14
extern void libusb_drv_impl_set_configuration(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int configuration);
#define LIBUSB_DRV_CMD_CLAIM_INTERFACE 15
extern void libusb_drv_impl_claim_interface(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int iface);
#define LIBUSB_DRV_CMD_RELEASE_INTERFACE 16
extern void libusb_drv_impl_release_interface(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int iface);
#define LIBUSB_DRV_CMD_OPEN_DEVICE_WITH_VID_PID 17
extern void libusb_drv_impl_open_device_with_vid_pid(eapi_ctx_t* ctx,cbuf_t* c_out,uint16_t vendor_id,uint16_t product_id);
#define LIBUSB_DRV_CMD_SET_INTERFACE_ALT_SETTING 18
extern void libusb_drv_impl_set_interface_alt_setting(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int interface_number,int alternate_setting);
#define LIBUSB_DRV_CMD_CLEAR_HALT 19
extern void libusb_drv_impl_clear_halt(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int endpoint);
#define LIBUSB_DRV_CMD_RESET_DEVICE 20
extern void libusb_drv_impl_reset_device(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle);
#define LIBUSB_DRV_CMD_CONTROL_TRANSFER_WRITE 21
extern void libusb_drv_impl_control_transfer_write(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t request_type,uint8_t request,uint16_t value,uint16_t index,eapi_binary_t* data,unsigned int timeout);
#define LIBUSB_DRV_CMD_CONTROL_TRANSFER_READ 22
extern void libusb_drv_impl_control_transfer_read(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t request_type,uint8_t request,uint16_t value,uint16_t index,uint16_t length,unsigned int timeout);
#define LIBUSB_DRV_CMD_BULK_TRANSFER_WRITE 23
extern void libusb_drv_impl_bulk_transfer_write(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t endpoint,eapi_binary_t* data,unsigned int timeout);
#define LIBUSB_DRV_CMD_BULK_TRANSFER_READ 24
extern void libusb_drv_impl_bulk_transfer_read(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t endpoint,int length,unsigned int timeout);
#define LIBUSB_DRV_CMD_INTERRUPT_TRANSFER_WRITE 25
extern void libusb_drv_impl_interrupt_transfer_write(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t endpoint,eapi_binary_t* data,unsigned int timeout);
#define LIBUSB_DRV_CMD_INTERRUPT_TRANSFER_READ 26
extern void libusb_drv_impl_interrupt_transfer_read(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t endpoint,int length,unsigned int timeout);
#define LIBUSB_DRV_CMD_ISO_TRANSFER_WRITE 27
extern void libusb_drv_impl_iso_transfer_write(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t endpoint,eapi_binary_t* data,int num_iso_packets,unsigned int packet_size,unsigned int timeout);
#define LIBUSB_DRV_CMD_ISO_TRANSFER_READ 28
extern void libusb_drv_impl_iso_transfer_read(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,uint8_t endpoint,int length,int num_iso_packets,unsigned int packet_size,unsigned int timeout);
#define LIBUSB_DRV_CMD_CANCEL_TRANSFER 29
extern void libusb_drv_impl_cancel_transfer(eapi_ctx_t* ctx,cbuf_t* c_out,uint32_t ref);
#define LIBUSB_DRV_CMD_KERNEL_DRIVER_ACTIVE 30
extern void libusb_drv_impl_kernel_driver_active(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int interface);
#define LIBUSB_DRV_CMD_DETACH_KERNEL_DRIVER 31
extern void libusb_drv_impl_detach_kernel_driver(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int interface);
#define LIBUSB_DRV_CMD_ATTACH_KERNEL_DRIVER 32
extern void libusb_drv_impl_attach_kernel_driver(eapi_ctx_t* ctx,cbuf_t* c_out,libusb_device_handle* dev_handle,int interface);
#endif
