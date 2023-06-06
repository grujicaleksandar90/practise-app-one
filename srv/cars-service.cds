using {com.practise as practise} from '../db/schema';

@path: 'cars'
service CarService {
    @odata.draft.enabled
    entity Cars      as projection on practise.Cars
    actions {
        action addMaker(name : String, state : String) returns CarMakers;
    }
    entity CarMakers as projection on practise.CarMakers;
}
