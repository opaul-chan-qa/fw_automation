*** Settings ***
#config
Variables    ${CURDIR}/config/uat.yaml

#library
Library     SeleniumLibrary
Library     String

#feature
Resource    ${CURDIR}/keywords/features/sign_up_feature.robot
Resource    ${CURDIR}/keywords/features/home_feature.robot

#page
Resource    ${CURDIR}/keywords/pages/sign_up_page.robot
Resource    ${CURDIR}/keywords/pages/home_page.robot

#common
Resource    ${CURDIR}/keywords/common.robot

#variables
Variables    ${CURDIR}/resources/testdata.yaml