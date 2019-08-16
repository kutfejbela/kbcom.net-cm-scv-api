#!/bin/bash

fakechroot fakeroot debootstrap buster container1
fakechroot fakeroot chroot container1 bash
