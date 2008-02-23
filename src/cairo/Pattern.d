/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = cairo-Patterns.html
 * outPack = cairo
 * outFile = Pattern
 * strct   = cairo_pattern_t
 * realStrct=
 * ctorStrct=
 * clss    = Pattern
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_pattern_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Matrix
 * 	- cairo.Surface
 * structWrap:
 * 	- cairo_matrix_t* -> Matrix
 * 	- cairo_pattern_t* -> Pattern
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 */

module cairo.Pattern;

public  import gtkc.cairotypes;

private import gtkc.cairo;


private import cairo.Matrix;
private import cairo.Surface;




/**
 * Description
 */
public class Pattern
{
	
	/** the main Gtk struct */
	protected cairo_pattern_t* cairo_pattern;
	
	
	public cairo_pattern_t* getPatternStruct()
	{
		return cairo_pattern;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_pattern;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_pattern_t* cairo_pattern)
	{
		if(cairo_pattern is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null cairo_pattern passed to constructor.");
			else return;
		}
		this.cairo_pattern = cairo_pattern;
	}
	
	/**
	 */
	
	/**
	 * Adds an opaque color stop to a gradient pattern. The offset
	 * specifies the location along the gradient's control vector. For
	 * example, a linear gradient's control vector is from (x0,y0) to
	 * (x1,y1) while a radial gradient's control vector is from any point
	 * on the start circle to the corresponding point on the end circle.
	 * The color is specified in the same way as in cairo_set_source_rgb().
	 * If two (or more) stops are specified with identical offset values,
	 * they will be sorted according to the order in which the stops are
	 * added, (stops added earlier will compare less than stops added
	 * later). This can be useful for reliably making sharp color
	 * transitions instead of the typical blend.
	 * Note: If the pattern is not a gradient pattern, (eg. a linear or
	 * radial pattern), then the pattern will be put into an error status
	 * with a status of CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	 * Params:
	 * offset =  an offset in the range [0.0 .. 1.0]
	 * red =  red component of color
	 * green =  green component of color
	 * blue =  blue component of color
	 */
	public void addColorStopRgb(double offset, double red, double green, double blue)
	{
		// void cairo_pattern_add_color_stop_rgb (cairo_pattern_t *pattern,  double offset,  double red,  double green,  double blue);
		cairo_pattern_add_color_stop_rgb(cairo_pattern, offset, red, green, blue);
	}
	
	/**
	 * Adds a translucent color stop to a gradient pattern. The offset
	 * specifies the location along the gradient's control vector. For
	 * example, a linear gradient's control vector is from (x0,y0) to
	 * (x1,y1) while a radial gradient's control vector is from any point
	 * on the start circle to the corresponding point on the end circle.
	 * The color is specified in the same way as in cairo_set_source_rgba().
	 * If two (or more) stops are specified with identical offset values,
	 * they will be sorted according to the order in which the stops are
	 * added, (stops added earlier will compare less than stops added
	 * later). This can be useful for reliably making sharp color
	 * transitions instead of the typical blend.
	 * Note: If the pattern is not a gradient pattern, (eg. a linear or
	 * radial pattern), then the pattern will be put into an error status
	 * with a status of CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	 * Params:
	 * offset =  an offset in the range [0.0 .. 1.0]
	 * red =  red component of color
	 * green =  green component of color
	 * blue =  blue component of color
	 * alpha =  alpha component of color
	 */
	public void addColorStopRgba(double offset, double red, double green, double blue, double alpha)
	{
		// void cairo_pattern_add_color_stop_rgba (cairo_pattern_t *pattern,  double offset,  double red,  double green,  double blue,  double alpha);
		cairo_pattern_add_color_stop_rgba(cairo_pattern, offset, red, green, blue, alpha);
	}
	
	/**
	 * Gets the number of color stops specified in the given gradient
	 * pattern.
	 * Since 1.4
	 * Params:
	 * count =  return value for the number of color stops, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, orCAIRO_STATUS_PATTERN_TYPE_MISMATCH if pattern is not a gradientpattern.
	 */
	public cairo_status_t getColorStopCount(int* count)
	{
		// cairo_status_t cairo_pattern_get_color_stop_count (cairo_pattern_t *pattern,  int *count);
		return cairo_pattern_get_color_stop_count(cairo_pattern, count);
	}
	
	/**
	 * Gets the color and offset information at the given index for a
	 * gradient pattern. Values of index are 0 to 1 less than the number
	 * returned by cairo_pattern_get_color_stop_count().
	 * Since 1.4
	 * Params:
	 * index =  index of the stop to return data for
	 * offset =  return value for the offset of the stop, or NULL
	 * red =  return value for red component of color, or NULL
	 * green =  return value for green component of color, or NULL
	 * blue =  return value for blue component of color, or NULL
	 * alpha =  return value for alpha component of color, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, or CAIRO_STATUS_INVALID_INDEXif index is not valid for the given pattern. If the pattern isnot a gradient pattern, CAIRO_STATUS_PATTERN_TYPE_MISMATCH isreturned.
	 */
	public cairo_status_t getColorStopRgba(int index, double* offset, double* red, double* green, double* blue, double* alpha)
	{
		// cairo_status_t cairo_pattern_get_color_stop_rgba (cairo_pattern_t *pattern,  int index,  double *offset,  double *red,  double *green,  double *blue,  double *alpha);
		return cairo_pattern_get_color_stop_rgba(cairo_pattern, index, offset, red, green, blue, alpha);
	}
	
	/**
	 * Creates a new cairo_pattern_t corresponding to an opaque color. The
	 * color components are floating point numbers in the range 0 to 1.
	 * If the values passed in are outside that range, they will be
	 * clamped.
	 * Params:
	 * red =  red component of the color
	 * green =  green component of the color
	 * blue =  blue component of the color
	 * Returns: the newly created cairo_pattern_t if successful, oran error pattern in case of no memory. The caller owns thereturned object and should call cairo_pattern_destroy() whenfinished with it.This function will always return a valid pointer, but if an erroroccurred the pattern status will be set to an error. To inspectthe status of a pattern use cairo_pattern_status().
	 */
	public static Pattern createRgb(double red, double green, double blue)
	{
		// cairo_pattern_t* cairo_pattern_create_rgb (double red,  double green,  double blue);
		auto p = cairo_pattern_create_rgb(red, green, blue);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Creates a new cairo_pattern_t corresponding to a translucent color.
	 * The color components are floating point numbers in the range 0 to
	 * 1. If the values passed in are outside that range, they will be
	 * clamped.
	 * Params:
	 * red =  red component of the color
	 * green =  green component of the color
	 * blue =  blue component of the color
	 * alpha =  alpha component of the color
	 * Returns: the newly created cairo_pattern_t if successful, oran error pattern in case of no memory. The caller owns thereturned object and should call cairo_pattern_destroy() whenfinished with it.This function will always return a valid pointer, but if an erroroccurred the pattern status will be set to an error. To inspectthe status of a pattern use cairo_pattern_status().
	 */
	public static Pattern createRgba(double red, double green, double blue, double alpha)
	{
		// cairo_pattern_t* cairo_pattern_create_rgba (double red,  double green,  double blue,  double alpha);
		auto p = cairo_pattern_create_rgba(red, green, blue, alpha);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Gets the solid color for a solid color pattern.
	 * Since 1.4
	 * Params:
	 * red =  return value for red component of color, or NULL
	 * green =  return value for green component of color, or NULL
	 * blue =  return value for blue component of color, or NULL
	 * alpha =  return value for alpha component of color, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, orCAIRO_STATUS_PATTERN_TYPE_MISMATCH if the pattern is not a solidcolor pattern.
	 */
	public cairo_status_t getRgba(double* red, double* green, double* blue, double* alpha)
	{
		// cairo_status_t cairo_pattern_get_rgba (cairo_pattern_t *pattern,  double *red,  double *green,  double *blue,  double *alpha);
		return cairo_pattern_get_rgba(cairo_pattern, red, green, blue, alpha);
	}
	
	/**
	 * Create a new cairo_pattern_t for the given surface.
	 * Params:
	 * surface =  the surface
	 * Returns: the newly created cairo_pattern_t if successful, oran error pattern in case of no memory. The caller owns thereturned object and should call cairo_pattern_destroy() whenfinished with it.This function will always return a valid pointer, but if an erroroccurred the pattern status will be set to an error. To inspectthe status of a pattern use cairo_pattern_status().
	 */
	public static Pattern createForSurface(Surface surface)
	{
		// cairo_pattern_t* cairo_pattern_create_for_surface (cairo_surface_t *surface);
		auto p = cairo_pattern_create_for_surface((surface is null) ? null : surface.getSurfaceStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Gets the surface of a surface pattern. The reference returned in
	 * surface is owned by the pattern; the caller should call
	 * cairo_surface_reference() if the surface is to be retained.
	 * Since 1.4
	 * Params:
	 * surface =  return value for surface of pattern, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, orCAIRO_STATUS_PATTERN_TYPE_MISMATCH if the pattern is not a surfacepattern.
	 */
	public cairo_status_t getSurface(cairo_surface_t** surface)
	{
		// cairo_status_t cairo_pattern_get_surface (cairo_pattern_t *pattern,  cairo_surface_t **surface);
		return cairo_pattern_get_surface(cairo_pattern, surface);
	}
	
	/**
	 * Create a new linear gradient cairo_pattern_t along the line defined
	 * by (x0, y0) and (x1, y1). Before using the gradient pattern, a
	 * number of color stops should be defined using
	 * cairo_pattern_add_color_stop_rgb() or
	 * cairo_pattern_add_color_stop_rgba().
	 * Note: The coordinates here are in pattern space. For a new pattern,
	 * pattern space is identical to user space, but the relationship
	 * between the spaces can be changed with cairo_pattern_set_matrix().
	 * Params:
	 * x0 =  x coordinate of the start point
	 * y0 =  y coordinate of the start point
	 * x1 =  x coordinate of the end point
	 * y1 =  y coordinate of the end point
	 * Returns: the newly created cairo_pattern_t if successful, oran error pattern in case of no memory. The caller owns thereturned object and should call cairo_pattern_destroy() whenfinished with it.This function will always return a valid pointer, but if an erroroccurred the pattern status will be set to an error. To inspectthe status of a pattern use cairo_pattern_status().
	 */
	public static Pattern createLinear(double x0, double y0, double x1, double y1)
	{
		// cairo_pattern_t* cairo_pattern_create_linear (double x0,  double y0,  double x1,  double y1);
		auto p = cairo_pattern_create_linear(x0, y0, x1, y1);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Gets the gradient endpoints for a linear gradient.
	 * Since 1.4
	 * Params:
	 * x0 =  return value for the x coordinate of the first point, or NULL
	 * y0 =  return value for the y coordinate of the first point, or NULL
	 * x1 =  return value for the x coordinate of the second point, or NULL
	 * y1 =  return value for the y coordinate of the second point, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, orCAIRO_STATUS_PATTERN_TYPE_MISMATCH if pattern is not a lineargradient pattern.
	 */
	public cairo_status_t getLinearPoints(double* x0, double* y0, double* x1, double* y1)
	{
		// cairo_status_t cairo_pattern_get_linear_points (cairo_pattern_t *pattern,  double *x0,  double *y0,  double *x1,  double *y1);
		return cairo_pattern_get_linear_points(cairo_pattern, x0, y0, x1, y1);
	}
	
	/**
	 * Creates a new radial gradient cairo_pattern_t between the two
	 * circles defined by (cx0, cy0, radius0) and (cx1, cy1, radius1). Before using the
	 * gradient pattern, a number of color stops should be defined using
	 * cairo_pattern_add_color_stop_rgb() or
	 * cairo_pattern_add_color_stop_rgba().
	 * Note: The coordinates here are in pattern space. For a new pattern,
	 * pattern space is identical to user space, but the relationship
	 * between the spaces can be changed with cairo_pattern_set_matrix().
	 * Params:
	 * cx0 =  x coordinate for the center of the start circle
	 * cy0 =  y coordinate for the center of the start circle
	 * radius0 =  radius of the start circle
	 * cx1 =  x coordinate for the center of the end circle
	 * cy1 =  y coordinate for the center of the end circle
	 * radius1 =  radius of the end circle
	 * Returns: the newly created cairo_pattern_t if successful, oran error pattern in case of no memory. The caller owns thereturned object and should call cairo_pattern_destroy() whenfinished with it.This function will always return a valid pointer, but if an erroroccurred the pattern status will be set to an error. To inspectthe status of a pattern use cairo_pattern_status().
	 */
	public static Pattern createRadial(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1)
	{
		// cairo_pattern_t* cairo_pattern_create_radial (double cx0,  double cy0,  double radius0,  double cx1,  double cy1,  double radius1);
		auto p = cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Gets the gradient endpoint circles for a radial gradient, each
	 * specified as a center coordinate and a radius.
	 * Since 1.4
	 * Params:
	 * x0 =  return value for the x coordinate of the center of the first circle, or NULL
	 * y0 =  return value for the y coordinate of the center of the first circle, or NULL
	 * r0 =  return value for the radius of the first circle, or NULL
	 * x1 =  return value for the x coordinate of the center of the second circle, or NULL
	 * y1 =  return value for the y coordinate of the center of the second circle, or NULL
	 * r1 =  return value for the radius of the second circle, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS, orCAIRO_STATUS_PATTERN_TYPE_MISMATCH if pattern is not a radialgradient pattern.
	 */
	public cairo_status_t getRadialCircles(double* x0, double* y0, double* r0, double* x1, double* y1, double* r1)
	{
		// cairo_status_t cairo_pattern_get_radial_circles (cairo_pattern_t *pattern,  double *x0,  double *y0,  double *r0,  double *x1,  double *y1,  double *r1);
		return cairo_pattern_get_radial_circles(cairo_pattern, x0, y0, r0, x1, y1, r1);
	}
	
	/**
	 * Increases the reference count on pattern by one. This prevents
	 * pattern from being destroyed until a matching call to
	 * cairo_pattern_destroy() is made.
	 * The number of references to a cairo_pattern_t can be get using
	 * cairo_pattern_get_reference_count().
	 * Returns: the referenced cairo_pattern_t.
	 */
	public Pattern reference()
	{
		// cairo_pattern_t* cairo_pattern_reference (cairo_pattern_t *pattern);
		auto p = cairo_pattern_reference(cairo_pattern);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Decreases the reference count on pattern by one. If the result is
	 * zero, then pattern and all associated resources are freed. See
	 * cairo_pattern_reference().
	 */
	public void destroy()
	{
		// void cairo_pattern_destroy (cairo_pattern_t *pattern);
		cairo_pattern_destroy(cairo_pattern);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * pattern.
	 * Returns: CAIRO_STATUS_SUCCESS, CAIRO_STATUS_NO_MEMORY, orCAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_pattern_status (cairo_pattern_t *pattern);
		return cairo_pattern_status(cairo_pattern);
	}
	
	/**
	 * Sets the mode to be used for drawing outside the area of a pattern.
	 * See cairo_extend_t for details on the semantics of each extend
	 * strategy.
	 * Params:
	 * extend =  a cairo_extend_t describing how the area outside of the
	 * pattern will be drawn
	 */
	public void setExtend(cairo_extend_t extend)
	{
		// void cairo_pattern_set_extend (cairo_pattern_t *pattern,  cairo_extend_t extend);
		cairo_pattern_set_extend(cairo_pattern, extend);
	}
	
	/**
	 * Gets the current extend mode for a pattern. See cairo_extend_t
	 * for details on the semantics of each extend strategy.
	 * Returns: the current extend strategy used for drawing thepattern.
	 */
	public cairo_extend_t getExtend()
	{
		// cairo_extend_t cairo_pattern_get_extend (cairo_pattern_t *pattern);
		return cairo_pattern_get_extend(cairo_pattern);
	}
	
	/**
	 * Sets the filter to be used for resizing when using this pattern.
	 * See cairo_filter_t for details on each filter.
	 * Params:
	 * filter =  a cairo_filter_t describing the filter to use for resizing
	 * the pattern
	 */
	public void setFilter(cairo_filter_t filter)
	{
		// void cairo_pattern_set_filter (cairo_pattern_t *pattern,  cairo_filter_t filter);
		cairo_pattern_set_filter(cairo_pattern, filter);
	}
	
	/**
	 * Gets the current filter for a pattern. See cairo_filter_t
	 * for details on each filter.
	 * Returns: the current filter used for resizing the pattern.
	 */
	public cairo_filter_t getFilter()
	{
		// cairo_filter_t cairo_pattern_get_filter (cairo_pattern_t *pattern);
		return cairo_pattern_get_filter(cairo_pattern);
	}
	
	/**
	 * Sets the pattern's transformation matrix to matrix. This matrix is
	 * a transformation from user space to pattern space.
	 * When a pattern is first created it always has the identity matrix
	 * for its transformation matrix, which means that pattern space is
	 * initially identical to user space.
	 * Important: Please note that the direction of this transformation
	 * matrix is from user space to pattern space. This means that if you
	 * imagine the flow from a pattern to user space (and on to device
	 * space), then coordinates in that flow will be transformed by the
	 * inverse of the pattern matrix.
	 * For example, if you want to make a pattern appear twice as large as
	 * Params:
	 * matrix =  a cairo_matrix_t
	 */
	public void setMatrix(Matrix matrix)
	{
		// void cairo_pattern_set_matrix (cairo_pattern_t *pattern,  const cairo_matrix_t *matrix);
		cairo_pattern_set_matrix(cairo_pattern, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * Stores the pattern's transformation matrix into matrix.
	 * Params:
	 * matrix =  return value for the matrix
	 */
	public void getMatrix(Matrix matrix)
	{
		// void cairo_pattern_get_matrix (cairo_pattern_t *pattern,  cairo_matrix_t *matrix);
		cairo_pattern_get_matrix(cairo_pattern, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * This function returns the type a pattern.
	 * See cairo_pattern_type_t for available types.
	 * Since 1.2
	 * Params:
	 * pattern =  a cairo_pattern_t
	 * Returns: The type of pattern.
	 */
	public cairo_pattern_type_t getType()
	{
		// cairo_pattern_type_t cairo_pattern_get_type (cairo_pattern_t *pattern);
		return cairo_pattern_get_type(cairo_pattern);
	}
	
	/**
	 * Returns the current reference count of pattern.
	 * Since 1.4
	 * Returns: the current reference count of pattern. If theobject is a nil object, 0 will be returned.
	 */
	public uint getReferenceCount()
	{
		// unsigned int cairo_pattern_get_reference_count (cairo_pattern_t *pattern);
		return cairo_pattern_get_reference_count(cairo_pattern);
	}
	
	/**
	 * Attach user data to pattern. To remove user data from a surface,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * Since 1.4
	 * Params:
	 * key =  the address of a cairo_user_data_key_t to attach the user data to
	 * userData =  the user data to attach to the cairo_pattern_t
	 * destroy =  a cairo_destroy_func_t which will be called when the
	 * cairo_t is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if aslot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_pattern_set_user_data (cairo_pattern_t *pattern,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_pattern_set_user_data(cairo_pattern, key, userData, destroy);
	}
	
	/**
	 * Return user data previously attached to pattern using the
	 * specified key. If no user data has been attached with the given
	 * key this function returns NULL.
	 * Since 1.4
	 * Params:
	 * key =  the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void* cairo_pattern_get_user_data (cairo_pattern_t *pattern,  const cairo_user_data_key_t *key);
		return cairo_pattern_get_user_data(cairo_pattern, key);
	}
}