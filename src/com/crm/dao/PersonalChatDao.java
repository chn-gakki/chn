package com.crm.dao;

import org.springframework.stereotype.Repository;

import com.crm.info.PersonalChat;
import com.haha.hibernate.HibernateDao;

@Repository("personalChatDao")
public class PersonalChatDao extends HibernateDao<PersonalChat, Integer> {

}
