require 'pry'
relationships = {
  isfp: {
    kindred: %i[isfp istp esfp isfj],
    inspiring: %i[infp estp esfj enfp],
    complementing: %i[istj intp infj enfj],
    challenging: %i[intj estj entp entj],
  },

  isfj: {
    kindred: %i[isfj infj esfj istj],
    inspiring: %i[isfp estj esfp enfj],
    complementing: %i[istp infp estp enfp],
    challenging: %i[intp intj entp entj],
  },

  intj: {
    kindred: %i[entj intp intj istj],
    inspiring: %i[infp infj entp enfj],
    complementing: %i[istp estp estj enfp],
    challenging: %i[isfp isfj esfp esfj],
  },

  intp: {
    kindred: %i[entp infp intj intp],
    inspiring: %i[istp infj entj enfp],
    complementing: %i[istj isfp estp enfj],
    challenging: %i[isfj estj esfp esfj],
  },

  infp: {
    kindred: %i[infj intp enfp infp],
    inspiring: %i[isfp intj entp enfj],
    complementing: %i[istp isfj esfp entj],
    challenging: %i[istj estp estj esfj],
  },

  infj: {
    kindred: %i[infj infp enfj isfj],
    inspiring: %i[isfp intp intj enfp],
    complementing: %i[istj esfj entp entj],
    challenging: %i[istp estp estj esfp],
  },

  istp: {
    kindred: %i[istp istj estp isfp],
    inspiring: %i[isfj intp estj esfp],
    complementing: %i[intj esfj entp entj],
    challenging: %i[infj infp enfj enfp],
  },
  
  istj: {
    kindred: %i[istj estj isfj istp],
    inspiring: %i[intj estp esfj entj],
    complementing: %i[isfp intp infj esfp],
    challenging: %i[infp entp enfp enfj],
  },
  
  entj: {
  kindred: %i[entj intj entp estj],
  inspiring: %i[istj intp enfp enfj],
  complementing: %i[istp infj estp esfj],
  challenging: %i[isfp isfj infp esfp],
 },

 entp: {
  kindred: %i[entp enfp intp entj],
  inspiring: %i[intj infp estp enfj],
  complementing: %i[istp infj estj esfp],
  challenging: %i[istj isfp isfj esfj],
 },

 estj: {
  kindred: %i[estj istj entj estp],
  inspiring: %i[istp intj esfp esfj],
  complementing: %i[isfj infj entp enfj],
  challenging: %i[isfp intp infp enfp],
 },

 estp: {
  kindred: %i[estp entp estj istp],
  inspiring: %i[istj esfp entj enfp],
  complementing: %i[isfp intj esfj enfj],
  challenging: %i[isfj intp infp infj],
 },

 enfj: {
  kindred: %i[enfj esfj infj enfp],
  inspiring: %i[intj infp entp entj],
  complementing: %i[isfj intp estj esfp],
  challenging: %i[istp istj isfp estp],
 },

 enfp: {
  kindred: %i[enfp entp enfj infp],
  inspiring: %i[intp infj esfp entj],
  complementing: %i[isfp intj estp esfj],
  challenging: %i[istp istj isfj estj],
 },

 esfj: {
  kindred: %i[esfj isfj esfp estj],
  inspiring: %i[istj isfp estp enfj],
  complementing: %i[istp infj entj enfp],
  challenging: %i[intp intj infp entp],
 },

 esfp: {
  kindred: %i[esfp estp isfp esfj],
  inspiring: %i[istp isfj enfp enfj],
  complementing: %i[istj infp estj entp],
  challenging: %i[intp intj infj entj],
 }
}
binding.pry
# Operations to implement:
# Find all users who complement/inspire/challenge/kindred me
# Given two users, figure out how they relate to each other
