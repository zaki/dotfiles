@echo off
doskey ls=dir $*
doskey clear=cls
doskey kill=taskkill /IM $*
doskey g=git $*
doskey gg=git gui $*
doskey gk=gitk --all $*
doskey r=rails $*
doskey rs=rails s $*
doskey rg=rails g $*
doskey r2s=ruby script\server $*
doskey r2c=ruby script\console $*
@echo on
