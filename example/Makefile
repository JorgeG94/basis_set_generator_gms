# Compiler
FC = gfortran
FFLAGS = -O2 -std=f2018 -Wall -ffree-line-length-none

# Object files
OBJS = periodic_table.o \
       basis_set_type.o \
       basis_set_definitions.o \
       basis_ccn_dk.o \
       basis_ccn_dk_pvdz.o \
       basis_ccn_dk_pvtz.o \
       basis_ccn_dk_pvqz.o \
       basis_ccn_dk_pv5z.o \
       basis_aug_ccn_dk.o \
       basis_aug_ccn_dk_pvdz.o \
       basis_aug_ccn_dk_pvtz.o \
       basis_aug_ccn_dk_pvqz.o \
       basis_aug_ccn_dk_pv5z.o \
       basis_ccn.o \
       basis_ccn_pvdz.o \
       basis_ccn_pvtz.o \
       basis_ccn_pvqz.o \
       basis_ccn_pv5z.o \
       basis_aug_ccn.o \
       basis_aug_ccn_pvdz.o \
       basis_aug_ccn_pvtz.o \
       basis_aug_ccn_pvqz.o \
       basis_aug_ccn_pv5z.o 

# Default target
all: basis_lib.a

# Static library
basis_lib.a: $(OBJS)
	ar rcs $@ $^
	@echo "Library created: basis_lib.a"

# -------------------------
# Compilation rules
# -------------------------

# Generic rule: compile .f90 → .o
%.o: %.f90
	$(FC) $(FFLAGS) -c $<

# -------------------------
# Module dependency order
# -------------------------

# Base modules
basis_set_type.o: basis_set_type.f90 periodic_table.o
basis_set_definitions.o: basis_set_definitions.f90 basis_set_type.o periodic_table.o

# Main module depends on base modules
basis_ccn_dk.o: basis_ccn_dk.f90 periodic_table.o basis_set_type.o basis_set_definitions.o
basis_aug_ccn_dk.o: basis_aug_ccn_dk.f90 periodic_table.o basis_set_type.o basis_set_definitions.o
basis_ccn.o: basis_ccn.f90 periodic_table.o basis_set_type.o basis_set_definitions.o
basis_aug_ccn.o: basis_aug_ccn.f90 periodic_table.o basis_set_type.o basis_set_definitions.o

# Submodules depend on main module
basis_ccn_dk_pvdz.o: basis_ccn_dk_pvdz.f90 basis_ccn_dk.o
basis_ccn_dk_pvtz.o: basis_ccn_dk_pvtz.f90 basis_ccn_dk.o
basis_ccn_dk_pvqz.o: basis_ccn_dk_pvqz.f90 basis_ccn_dk.o
basis_ccn_dk_pv5z.o: basis_ccn_dk_pv5z.f90 basis_ccn_dk.o

# Submodules depend on main module
basis_aug_ccn_dk_pvdz.o: basis_aug_ccn_dk_pvdz.f90 basis_aug_ccn_dk.o
basis_aug_ccn_dk_pvtz.o: basis_aug_ccn_dk_pvtz.f90 basis_aug_ccn_dk.o
basis_aug_ccn_dk_pvqz.o: basis_aug_ccn_dk_pvqz.f90 basis_aug_ccn_dk.o
basis_aug_ccn_dk_pv5z.o: basis_aug_ccn_dk_pv5z.f90 basis_aug_ccn_dk.o

# Submodules depend on main module
basis_ccn_pvdz.o: basis_ccn_pvdz.f90 basis_aug_ccn_dk.o
basis_ccn_pvtz.o: basis_ccn_pvtz.f90 basis_aug_ccn_dk.o
basis_ccn_pvqz.o: basis_ccn_pvqz.f90 basis_aug_ccn_dk.o
basis_ccn_pv5z.o: basis_ccn_pv5z.f90 basis_aug_ccn_dk.o

# Submodules depend on main module
basis_aug_ccn_pvdz.o: basis_aug_ccn_pvdz.f90 basis_aug_ccn_dk.o
basis_aug_ccn_pvtz.o: basis_aug_ccn_pvtz.f90 basis_aug_ccn_dk.o
basis_aug_ccn_pvqz.o: basis_aug_ccn_pvqz.f90 basis_aug_ccn_dk.o
basis_aug_ccn_pv5z.o: basis_aug_ccn_pv5z.f90 basis_aug_ccn_dk.o

# -------------------------
# Test program
# -------------------------
test: test_basis.f90 basis_lib.a
	$(FC) $(FFLAGS) -o $@ $< basis_lib.a
	@echo "Test program created"

# -------------------------
# Cleanup
# -------------------------
clean:
	rm -f *.o *.mod *.smod *.a test

rebuild: clean all

.PHONY: all clean rebuild test

