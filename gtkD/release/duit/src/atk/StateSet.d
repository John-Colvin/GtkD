/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = atk-AtkStateSet.html
 * outPack = atk
 * outFile = StateSet
 * strct   = AtkStateSet
 * realStrct=
 * ctorStrct=
 * clss    = StateSet
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_state_set_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.StateSet;

private import atk.atktypes;

private import lib.atk;

private import glib.Str;

/**
 * Description
 * An AtkStateSet determines a component's state set. It is composed of a set
 * of AtkStates.
 */
public class StateSet
{
	
	/** the main Gtk struct */
	protected AtkStateSet* atkStateSet;
	
	
	public AtkStateSet* getStateSetStruct()
	{
		return atkStateSet;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkStateSet;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkStateSet* atkStateSet)
	{
		this.atkStateSet = atkStateSet;
	}
	
	/**
	 */
	
	/**
	 * Creates a new empty state set.
	 * Returns:
	 *  a new AtkStateSet
	 */
	public this ()
	{
		// AtkStateSet* atk_state_set_new (void);
		this(cast(AtkStateSet*)atk_state_set_new() );
	}
	
	/**
	 * Checks whether the state set is empty, i.e. has no states set.
	 * set:
	 *  an AtkStateType
	 * Returns:
	 *  TRUE if set has no states set, otherwise FALSE
	 */
	public int isEmpty()
	{
		// gboolean atk_state_set_is_empty (AtkStateSet *set);
		return atk_state_set_is_empty(atkStateSet);
	}
	
	/**
	 * Add a new state for the specified type to the current state set if
	 * it is not already present.
	 * set:
	 *  an AtkStateSet
	 * type:
	 *  an AtkStateType
	 * Returns:
	 *  TRUE if the state for type is not already in set.
	 */
	public int addState(AtkStateType type)
	{
		// gboolean atk_state_set_add_state (AtkStateSet *set,  AtkStateType type);
		return atk_state_set_add_state(atkStateSet, type);
	}
	
	/**
	 * Add the states for the specified types to the current state set.
	 * set:
	 *  an AtkStateSet
	 * types:
	 *  an array of AtkStateType
	 * n_types:
	 *  The number of elements in the array
	 */
	public void addStates(AtkStateType* types, int nTypes)
	{
		// void atk_state_set_add_states (AtkStateSet *set,  AtkStateType *types,  gint n_types);
		atk_state_set_add_states(atkStateSet, types, nTypes);
	}
	
	/**
	 * Removes all states from the state set.
	 * set:
	 *  an AtkStateSet
	 */
	public void clearStates()
	{
		// void atk_state_set_clear_states (AtkStateSet *set);
		atk_state_set_clear_states(atkStateSet);
	}
	
	/**
	 * Checks whether the state for the specified type is in the specified set.
	 * set:
	 *  an AtkStateSet
	 * type:
	 *  an AtkStateType
	 * Returns:
	 *  TRUE if type is the state type is in set.
	 */
	public int containsState(AtkStateType type)
	{
		// gboolean atk_state_set_contains_state (AtkStateSet *set,  AtkStateType type);
		return atk_state_set_contains_state(atkStateSet, type);
	}
	
	/**
	 * Checks whether the states for all the specified types are in the
	 * specified set.
	 * set:
	 *  an AtkStateSet
	 * types:
	 *  an array of AtkStateType
	 * n_types:
	 *  The number of elements in the array
	 * Returns:
	 *  TRUE if all the states for type are in set.
	 */
	public int containsStates(AtkStateType* types, int nTypes)
	{
		// gboolean atk_state_set_contains_states (AtkStateSet *set,  AtkStateType *types,  gint n_types);
		return atk_state_set_contains_states(atkStateSet, types, nTypes);
	}
	
	/**
	 * Removes the state for the specified type from the state set.
	 * set:
	 *  an AtkStateSet
	 * type:
	 *  an AtkType
	 * Returns:
	 *  TRUE if type was the state type is in set.
	 */
	public int removeState(AtkStateType type)
	{
		// gboolean atk_state_set_remove_state (AtkStateSet *set,  AtkStateType type);
		return atk_state_set_remove_state(atkStateSet, type);
	}
	
	/**
	 * Constructs the intersection of the two sets, returning NULL if the
	 * intersection is empty.
	 * set:
	 *  an AtkStateSet
	 * compare_set:
	 *  another AtkStateSet
	 * Returns:
	 *  a new AtkStateSet which is the intersection of the two sets.
	 */
	public AtkStateSet* andSets(AtkStateSet* compareSet)
	{
		// AtkStateSet* atk_state_set_and_sets (AtkStateSet *set,  AtkStateSet *compare_set);
		return atk_state_set_and_sets(atkStateSet, compareSet);
	}
	
	/**
	 * Constructs the union of the two sets.
	 * set:
	 *  an AtkStateSet
	 * compare_set:
	 *  another AtkStateSet
	 * Returns:
	 *  a new AtkStateSet which is the union of the two sets,
	 * returning NULL is empty.
	 */
	public AtkStateSet* orSets(AtkStateSet* compareSet)
	{
		// AtkStateSet* atk_state_set_or_sets (AtkStateSet *set,  AtkStateSet *compare_set);
		return atk_state_set_or_sets(atkStateSet, compareSet);
	}
	
	/**
	 * Constructs the exclusive-or of the two sets, returning NULL is empty.
	 * The set returned by this operation contains the states in exactly
	 * one of the two sets.
	 * set:
	 *  an AtkStateSet
	 * compare_set:
	 *  another AtkStateSet
	 * Returns:
	 *  a new AtkStateSet which contains the states which are
	 * in exactly one of the two sets.
	 */
	public AtkStateSet* xorSets(AtkStateSet* compareSet)
	{
		// AtkStateSet* atk_state_set_xor_sets (AtkStateSet *set,  AtkStateSet *compare_set);
		return atk_state_set_xor_sets(atkStateSet, compareSet);
	}
}