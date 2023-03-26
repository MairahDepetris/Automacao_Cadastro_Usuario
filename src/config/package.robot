*** Settings ***
Documentation                        Este aqui é o gerenciador de dependencias

Library                              SeleniumLibrary
Library                              helpers.py
Library                              RPA.Hubspot
Library                              String

Resource                             hooks.robot
Resource                             ../auto/keywords/kws_formulario.robot
