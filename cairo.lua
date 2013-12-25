-- Do not change this file manually
-- Generated with dev/create-cairo-mt.lua

local ffi = require 'ffi'

local cairo_mt = {__index={}}

local function cairo_create_mt(cairo)

   local function register(funcname, prefix)
      prefix = prefix or 'cairo_'

      local status, sym = pcall(function()
                                   return cairo.C[prefix .. funcname]
                                end)
      if status then
         cairo_mt.__index[funcname] = sym
         return true
      end

      print('warning: method not found: ', prefix .. funcname, sym)

      return false
   end

  register('reference')
  register('destroy')
  register('get_reference_count')
  register('get_user_data')
  register('set_user_data')
  register('save')
  register('restore')
  register('push_group')
  register('push_group_with_content')
  register('pop_group')
  register('pop_group_to_source')
  register('set_operator')
  register('set_source')
  register('set_source_rgb')
  register('set_source_rgba')
  register('set_source_surface')
  register('set_tolerance')
  register('set_antialias')
  register('set_fill_rule')
  register('set_line_width')
  register('set_line_cap')
  register('set_line_join')
  register('set_dash')
  register('set_miter_limit')
  register('translate')
  register('scale')
  register('rotate')
  register('transform')
  register('set_matrix')
  register('identity_matrix')
  register('user_to_device')
  register('user_to_device_distance')
  register('device_to_user')
  register('device_to_user_distance')
  register('new_path')
  register('move_to')
  register('new_sub_path')
  register('line_to')
  register('curve_to')
  register('arc')
  register('arc_negative')
  register('rel_move_to')
  register('rel_line_to')
  register('rel_curve_to')
  register('rectangle')
  register('close_path')
  register('path_extents')
  register('paint')
  register('paint_with_alpha')
  register('mask')
  register('mask_surface')
  register('stroke')
  register('stroke_preserve')
  register('fill')
  register('fill_preserve')
  register('copy_page')
  register('show_page')
  register('in_stroke')
  register('in_fill')
  register('in_clip')
  register('stroke_extents')
  register('fill_extents')
  register('reset_clip')
  register('clip')
  register('clip_preserve')
  register('clip_extents')
  register('copy_clip_rectangle_list')
  register('select_font_face')
  register('set_font_size')
  register('set_font_matrix')
  register('get_font_matrix')
  register('set_font_options')
  register('get_font_options')
  register('set_font_face')
  register('get_font_face')
  register('set_scaled_font')
  register('get_scaled_font')
  register('show_text')
  register('show_glyphs')
  register('show_text_glyphs')
  register('text_path')
  register('glyph_path')
  register('text_extents')
  register('glyph_extents')
  register('font_extents')
  register('get_operator')
  register('get_source')
  register('get_tolerance')
  register('get_antialias')
  register('has_current_point')
  register('get_current_point')
  register('get_fill_rule')
  register('get_line_width')
  register('get_line_cap')
  register('get_line_join')
  register('get_miter_limit')
  register('get_dash_count')
  register('get_dash')
  register('get_matrix')
  register('get_target')
  register('get_group_target')
  register('copy_path')
  register('copy_path_flat')
  register('append_path')
  register('status')

  function cairo.create(...)
     local cr = cairo.C.cairo_create(...)
     ffi.gc(cr, cairo.C.cairo_destroy)
     return cr
  end

  ffi.metatype('cairo_t', cairo_mt)

end

return cairo_create_mt


