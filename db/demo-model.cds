using { ust.reuse as reuse } from './reuse'; //in 'as reuse, write name after . (here, reuse)
using { cuid, managed, temporal } from '@sap/cds/common';

namespace ust.demo;
 
context master {
   
    //consume address aspect to bring set of fields which are reusable
    entity student: reuse.address {
        key id: reuse.Guid; //reusing guid
        nameFirst: String(80);
        nameLast: String(80);
        age: Integer;
        //foreign key @runtime the column name will be class_id
        class: Association to semester;
    }
 

    entity semester {
        key id: String(32);
        name: String(30);
        specialization: String(80);
        hod: String(44);
}
 
    entity books {
        key code : String(32);
        name: localized String(80);
        author: String(44);
    }
} 
    context transaction {
        entity subs: cuid, managed, temporal {
            student: Association to one master.student;
            book: Association to one master.books
        }
}
